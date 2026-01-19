import argparse
import csv
import os
import sys
from datetime import datetime

DATA_DIR = os.path.join(os.path.dirname(__file__), 'data')

def search_data(query, domain=None):
    results = []
    files_to_search = []
    
    if domain:
        target_file = os.path.join(DATA_DIR, f"{domain}.csv")
        if os.path.exists(target_file):
            files_to_search.append((domain, target_file))
    else:
        for file in os.listdir(DATA_DIR):
            if file.endswith('.csv'):
                files_to_search.append((file.replace('.csv', ''), os.path.join(DATA_DIR, file)))

    query = query.lower()
    for domain_name, file_path in files_to_search:
        try:
            with open(file_path, mode='r', encoding='utf-8') as f:
                reader = csv.DictReader(f)
                for row in reader:
                    clean_values = [str(v) for v in row.values() if v is not None]
                    row_values = " ".join(clean_values).lower()
                    if query in row_values:
                        row['source_domain'] = domain_name
                        results.append(row)
        except Exception as e:
            print(f"Error reading {file_path}: {e}")
    return results

def generate_system_design(project_name, industry_query):
    reasoning = search_data(industry_query, 'backend-reasoning')
    if not reasoning:
        return "No reasoning data found for this industry."
    
    rule = reasoning[0]
    anti_patterns = search_data(industry_query, 'anti-patterns')
    checklist = search_data('all', 'pre-delivery-checklist') # Get general criticals

    output = f"""
+----------------------------------------------------------------------------------------+
|  TARGET: {project_name} - RECOMMENDED BACKEND ARCHITECTURE                            |
+----------------------------------------------------------------------------------------+
|                                                                                        |
|  ARCHITECTURE: {rule.get('Recommended_Architecture')}                                  |
|     Scale Strategy: {rule.get('Sub_Category')} optimized                               |
|     Security Level: {rule.get('Security_Level')}                                       |
|                                                                                        |
|  STACK: {rule.get('Primary_Stack')} / {rule.get('Secondary_Stack')}                    |
|     Database: {rule.get('Database_Strategy')}                                          |
|     Key Features: {rule.get('Key_Features')}                                           |
|                                                                                        |
|  AVOID (Anti-patterns):                                                                |
"""
    for ap in anti_patterns[:3]:
        output += f"     - {ap.get('Anti_Pattern')}: {ap.get('Reason')}\n"
    
    output += """|                                                                                        |
|  PRE-DELIVERY CHECKLIST:                                                               |
"""
    for item in checklist[:5]:
        output += f"     [ ] {item.get('Item')}: {item.get('Description')}\n"

    output += "+----------------------------------------------------------------------------------------+\n"
    return output

def persist_design(content, target_path="BACKEND_MASTER.md"):
    header = f"# Backend Master Architecture\n*Generated on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}*\n\n"
    with open(target_path, "w", encoding="utf-8") as f:
        f.write(header + "```text\n" + content + "```\n")
    print(f"Successfully persisted design to {target_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Backend Pro Max v2.0 Reasoning Engine")
    parser.add_argument("query", help="Search query or industry name")
    parser.add_argument("--domain", help="Specific domain to search in (e.g. tech-stacks)")
    parser.add_argument("--system-design", action="store_true", help="Generate a complete system design report")
    parser.add_argument("--project", default="Generic Project", help="Project name for the report")
    parser.add_argument("--persist", action="store_true", help="Save the output to BACKEND_MASTER.md")

    args = parser.parse_args()

    if args.system_design:
        report = generate_system_design(args.project, args.query)
        print(report)
        if args.persist:
            persist_design(report)
    else:
        found_results = search_data(args.query, args.domain)
        if not found_results:
            print(f"No results found for '{args.query}'")
        else:
            print(f"--- Search Results for '{args.query}' ---")
            for i, res in enumerate(found_results[:10], 1):
                print(f"\nResult {i} (from {res['source_domain']}):")
                for key, val in res.items():
                    if key != 'source_domain':
                        print(f"  {key}: {val}")
                    print(f"  {key}: {val}")
        
        if len(found_results) > 10:
            print(f"\n... and {len(found_results) - 10} more results.")
