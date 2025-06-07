-- Cria tabela simples de logs de workflow
CREATE TABLE IF NOT EXISTS logs (
    id SERIAL PRIMARY KEY,
    workflow VARCHAR(100) NOT NULL,
    status   VARCHAR(20)  NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insere registro inicial
INSERT INTO logs (workflow, status)
VALUES ('bootstrap', 'OK');
