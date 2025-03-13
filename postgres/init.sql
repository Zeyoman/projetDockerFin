CREATE TABLE todo (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    done BOOLEAN DEFAULT false
);

INSERT INTO todo (title, done) VALUES
    ('Apprendre Docker', true),
    ('Maîtriser Symfony', false),
    ('Configurer PostgreSQL', true),
    ('Créer une API REST', false),
    ('Tester l''application', false),
    ('Documenter le projet', false),
    ('Optimiser les performances', false),
    ('Gérer les erreurs', false),
    ('Implémenter la sécurité', false),
    ('Déployer l''application', false);
