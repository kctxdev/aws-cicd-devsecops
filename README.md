🛡️ AWS Cloud Security: Automação com Terraform e CI/CD
Este projeto nasceu do desafio de provisionar infraestrutura na nuvem de forma automática, segura e profissional. Em vez de criar recursos manualmente, utilizei código para garantir que tudo seja replicável e auditável.

🎯 O que este projeto faz?
Sempre que eu faço um push no código, um robô (GitHub Actions) entra em ação, valida as configurações e cria um Cofre de Senhas (AWS Secrets Manager) em São Paulo, pronto para uso.

🛠️ Minha Caixa de Ferramentas
Terraform: Para escrever a infraestrutura como se fosse um texto (IaC).

GitHub Actions: O motor que roda a pipeline de CI/CD.

AWS: Onde a mágica acontece na prática.

🔐 Segurança em Primeiro Lugar (DevSecOps)
Zero Vazamento: Nenhuma senha ou chave da AWS foi escrita no código. Tudo é puxado de forma criptografada pelo GitHub.

Padronização: A pipeline só termina se o código estiver organizado e seguindo os padrões do Terraform.

📈 O que eu aprendi
Durante o desenvolvimento, precisei resolver desafios reais de conflito de recursos e sincronização de regiões, habilidades fundamentais para quem atua com Cloud e DevOps hoje.

📸 Evidências do Sucesso
(Aqui você cola o print daquela tela cheia de "checks" verdes do GitHub)

<img width="1221" height="213" alt="image" src="https://github.com/user-attachments/assets/c31410d3-1d3d-48b3-be25-d9e5266b2d0c" />
