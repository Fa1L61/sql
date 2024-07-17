CREATE OR REPLACE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR AS $$
DECLARE
    days INT;
    hours INT;
    minutes INT;
    remaining_seconds INT;
    result VARCHAR;
BEGIN
    days := seconds / 86400;
    seconds := seconds % 86400;


    hours := seconds / 3600;
    seconds := seconds % 3600;


    minutes := seconds / 60;
    remaining_seconds := seconds % 60;


    result := days || ' days ' ||
              hours || ' hours ' ||
              minutes || ' minutes ' ||
              remaining_seconds || ' seconds';

    RETURN result;
END;

SELECT format_seconds(123456) AS FormattedTime