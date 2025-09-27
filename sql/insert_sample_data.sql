-- Insert sample customers
INSERT INTO customers VALUES (1001, 'John Doe', 'Kigali');
INSERT INTO customers VALUES (1002, 'Jane Smith', 'Butare');
INSERT INTO customers VALUES (1003, 'Paul Kagame', 'Kigali');
INSERT INTO customers VALUES (1004, 'Alice Uwase', 'Huye');

-- Insert sample products
INSERT INTO products VALUES (2001, 'Coffee Beans', 'Beverages');
INSERT INTO products VALUES (2002, 'Green Tea', 'Beverages');
INSERT INTO products VALUES (2003, 'Instant Coffee', 'Beverages');

-- Insert transactions
INSERT INTO transactions VALUES (3001, 1001, 2001, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 25000);
INSERT INTO transactions VALUES (3002, 1002, 2002, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 18000);
INSERT INTO transactions VALUES (3003, 1001, 2001, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 20000);
INSERT INTO transactions VALUES (3004, 1003, 2003, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 22000);
INSERT INTO transactions VALUES (3005, 1004, 2002, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 15000);
INSERT INTO transactions VALUES (3006, 1002, 2001, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 19000);

COMMIT;
