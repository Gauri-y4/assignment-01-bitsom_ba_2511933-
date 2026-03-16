## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language questions. Keyword searches rely on exact word matches. If the contract uses different wording than the user’s query, relevant sections may not be found. Legal documents often contain complex language, synonyms, and varied phrasing, which makes simple keyword searches unreliable.

Vector databases solve this problem by using embeddings that capture the semantic meaning of text rather than just individual keywords. Each section or paragraph of the contract can be converted into a numerical vector representation using a machine learning model. When a lawyer asks a question such as “What are the termination clauses?”, the question is also converted into an embedding vector.

The system then performs a similarity search between the query vector and the stored vectors representing sections of the contract. This allows the system to retrieve the most semantically relevant passages, even if the exact words in the query do not appear in the document.

A vector database is therefore used to store these embeddings and efficiently perform similarity searches across large volumes of text. This enables lawyers to quickly locate relevant information within hundreds of pages of legal contracts using natural language queries, making the system far more effective than traditional keyword-based search methods.
