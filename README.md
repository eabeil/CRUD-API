# CRUD-API
CRUD-API-ASSIGNMENT

## API Endpoints

All endpoints use the base URL: `http://localhost:8080/api/posts`

### 1. Get All Characters

```http
GET /characters
````

**Response:**

```json
[
  {
    "id": 1,
    "name": "Barristan Selmy",
    "title": "Barristan the Bold",
    "weapon": "Longsword",
    "status": "Active",
  }
]
```

### 2. Get Character by ID

```http
GET /characters/1
```

**Response:**

```json
{
  "id": 1,
  "name": "Barristan Selmy",
  "title": "Barristan the Bold",
  "weapon": "Longsword",
  "status": "Active",
}
```

### 3. Create a New Character

```http
POST /characters
request body:
{
  "name": "Jaime Lannister",
  "title": "The Kingslayer",
  "weapon": "Castle-forged steel",
  "status": "Active"
}
```

**Response:**

```json
{
  "id": 4,
  "name": "Jaime Lannister",
  "title": "The Kingslayer",
  "weapon": "Castle-forged steel",
  "status": "Active"
}
```

### 4. Update an Existing Character

```http
PUT /characters/{id}
request body:
{
  "name": "new Jaime Lannister",
  "title": "Lord Commander",
  "weapon": "Valyrian Steel",
  "status": "Active"
}
```

**Response:**

```json
{
  "name": "new Jaime Lannister",
  "title": "Lord Commander",
  "weapon": "Valyrian Steel",
  "status": "Active"
}
```

### 5. Delete a Post

```http
DELETE /characters/{id}
```

**Response:** <Empty>

### 6. Search Characters by Name

```http
GET /api/posts/search?query=barristan
```

**Response:**

```json
{
  "id": 1,
  "name": "Barristan Selmy",
  "title": "Barristan the Bold",
  "weapon": "Longsword",
  "status": "Active",
}
```

### 7. Search Characters by Status

```http
GET /characters/search/status?status=alive
```

**Response:**

```json
[
{
  "id": 1,
  "name": "Barristan Selmy",
  "title": "Barristan the Bold",
  "weapon": "Longsword",
  "status": "Active",
}
]
```
