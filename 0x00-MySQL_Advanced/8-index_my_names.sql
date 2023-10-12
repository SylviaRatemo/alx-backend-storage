-- Stored Procedure
-- email validation sent
ALTER TABLE names
ADD COLUMN first_letter CHAR(1) GENERATED ALWAYS
    AS (LEFT(name, 1)) STORED;

CREATE INDEX idx_name_first ON names (first_letter);
