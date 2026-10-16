-- Retorna o nome de cada participante de um evento, em ordem de nome.
-- O parâmetro do evento aparece só no WHERE: o SQLAlchemy também leria
-- dois-pontos dentro de comentários como se fossem parâmetros.
SELECT users.name
FROM registrations
JOIN users ON users.id = registrations.user_id
WHERE registrations.event_id = :event_id
ORDER BY users.name;
