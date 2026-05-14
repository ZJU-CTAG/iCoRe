# 1. 构建仓库结构树
python -m scripts.code_retrieval.repo_graph.graph --keywords_path ./retrieval_results/code/keywords_gpt-4o.json --swt

# 2. 提取 keywords
python -m scripts.code_retrieval.extract_keywords --graph_path ./retrieval_results/graphs --swt

# 3. 检索
python -m scripts.code_retrieval.retrieval --keywords_path ./retrieval_results/code/keywords_gpt-4o.json --graph_dir ./retrieval_results/graphs --save_path ./retrieval_results/code/retrieval_results.json --swt