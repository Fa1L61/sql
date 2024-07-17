CREATE OR REPLACE PROCEDURE print_even_numbers()
LANGUAGE plpgsql
AS $$
DECLARE
    num INT;
BEGIN
    FOR num IN 1..10 LOOP
        IF num % 2 = 0 THEN
            RAISE NOTICE '%', num;
        END IF;
    END LOOP;
END;
$$;

CALL print_even_numbers();