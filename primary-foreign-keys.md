---

# ✅ Parent table (single-column primary key)

```sql
CREATE TABLE Persons (
    PersonID INT NOT NULL,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Age INT,
    CONSTRAINT PK_Person PRIMARY KEY (PersonID)
);
```

* `PersonID` is the **only** primary key column.
* It's automatically `UNIQUE` and `NOT NULL`.

---

# ✅ Child table referencing the parent with a foreign key

```sql
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    PersonID INT NOT NULL,
    OrderDate DATE,
    CONSTRAINT PK_Orders PRIMARY KEY (OrderID),
    CONSTRAINT FK_Orders_Person
        FOREIGN KEY (PersonID)
        REFERENCES Persons(PersonID)
);
```

### What happens here?

- `PersonID` in `Orders` **must match** an existing `PersonID` in `Persons`.
- You can’t insert an order unless the person exists.
- If `PersonID` is deleted in `Persons`, the DB blocks it unless you use cascading rules.

---

# 👍 Example with cascading behavior (optional)

```sql
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    PersonID INT NOT NULL,
    OrderDate DATE,
    CONSTRAINT PK_Orders PRIMARY KEY (OrderID),
    CONSTRAINT FK_Orders_Person
        FOREIGN KEY (PersonID)
        REFERENCES Persons(PersonID)
        ON DELETE CASCADE
);
```

Now deleting a Person automatically deletes their Orders.

---

# 🧠 Summary (single-column PK scenario)

| Table   | Key Column | Type of Key           |
| ------- | ---------- | --------------------- |
| Persons | PersonID   | Primary Key           |
| Orders  | PersonID   | Foreign Key → Persons |

This is the typical, clean, simple structure you see in most real-world schemas.

---

If you want, I can also show:

- How to insert and query across these tables
- The difference between defining PK inline vs. table-level
- How to drop or rename FK and PK constraints

Just tell me!
