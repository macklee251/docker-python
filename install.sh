# Para rodar esse arquivo digitamos . install.sh
echo "**/__pycache__" > .gitignore;   # Criando um arquivo .gitignore
python3 -m venv venv                 # Criando um ambiente virtual
. venv/bin/activate                  # Ativando o ambiente virtual
pip install -r requirements.txt         # Instalando as dependências do projeto  
pip install pre-commit               # Instalando o pre-commit
pre-commit install                   # Instalando o pre-commit

cat <<EOT >> .pre-commit-config.yaml
repos:
  - repo: local
    hooks:
      - id: requirements
        name: requirements
        entry: bash -c 'venv/bin/pip3 freeze > requirements.txt; git add requirements.txt'
        language: system
        pass_filenames: false
        stages: [commit]
EOT
git init
git add .
git commit -m "Config: initial configurations"