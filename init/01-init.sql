-- Criar usuário airflow, se não existir
DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'airflow') THEN
        CREATE ROLE airflow WITH LOGIN PASSWORD 'airflow';
    END IF;
END $$;

-- Criar banco airflow diretamente
CREATE DATABASE airflow OWNER postgres;

-- Conceder privilégios
GRANT ALL PRIVILEGES ON DATABASE airflow TO airflow;
GRANT ALL PRIVILEGES ON DATABASE postgres TO postgres;
