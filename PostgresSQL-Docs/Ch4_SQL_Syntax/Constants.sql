-- 1. String Constants:

'This is a string constant.'

'Dianne''s horse'  -- Dianne's horse


SELECT 'foobar';

SELECT 'foo'
'bar';

SELECT 'foo'  'bar';        -- Syntax error.




-- 2. String Constants with C-Style Escapes:

SELECT E'line1 \nline2'

SELECT e'His name is \\ \'Hossam\''



-- 3. String Constants with Unicode Escapes:

SELECT U&'D\0061t\+000061';
SELECT U&'\0441\043B\043E\043D';      



-- 4. Dollar-Quoted String Constants:
    -- Only if your string constant has alot of single quotes.

SELECT $$Dianne's horse$$;      -- Dianne's horse

SELECT $SomeTag$Dianne's horse$SomeTag$