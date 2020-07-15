BEGIN;

INSERT INTO blogful_articles (title, date_published, content)
VALUES
    ('Dogs', now() - '2 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '2 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '4 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '4 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '3 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '3 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '3 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '3 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '6 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '6 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '1 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '1 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '1 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '9 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '9 days'::INTERVAL, 'blah blah'),
    ('Dogs', now() - '9 days'::INTERVAL, 'blah blah'),
    ('Dogs', now(), 'blah blah'),
    ('Dogs', now(), 'blah blah'),
    ('Dogs', now(), 'blah blah'),
    ('Dogs', now(), 'blah blah');

COMMIT;