CREATE TABLE orders (
    order_id INT,
    amount NUMERIC
);

INSERT INTO orders VALUES (101, 5000);
INSERT INTO orders VALUES (102, 15000);
INSERT INTO orders VALUES (103, 8000);
INSERT INTO orders VALUES (104, 25000);
INSERT INTO orders VALUES (105, 12000);

DO $$
DECLARE
    order_cursor CURSOR FOR
        SELECT order_id, amount
        FROM orders;

    v_order_id orders.order_id%TYPE;
    v_amount orders.amount%TYPE;

BEGIN
    OPEN order_cursor;

    LOOP
        FETCH order_cursor INTO v_order_id, v_amount;
        EXIT WHEN NOT FOUND;

        IF v_amount > 10000 THEN
            RAISE NOTICE 'Order ID: %, High Value', v_order_id;
        END IF;
    END LOOP;

    CLOSE order_cursor;
END $$;
