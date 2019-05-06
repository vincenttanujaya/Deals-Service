# Deals Service
## KK C
## Team Members
- Dewi Sekarini (05111640000004)
- Diana Hudani Kisyono (05111640000079)
- Vincent Marcello Dwi Tanujaya (05111640000089)

## Table of Contents

## API Docs
BASE_URL = `/api`
### Deals
#### 1. Show deals available
* **URL**

  `/api/deals`

* **Method:**
  

  `GET` | `POST` | `DELETE` | `PUT`
  
*  **URL Params**
 
   `/[id_deals]`

* **Data Params**

  { 
    "id_deals": 13,
    "deals_name": "PROMO BUKA",
    "deals_description": "Disc 50% Maks. 20000",
    "deals_exp": "2019-05-31",
    "deals_start_date": "2019-05-01",
    "deals_type": "Makanan",
    "deals_disc_type": "Discount",
    "deals_discount": 50,
    "deals_max_value": 2000,
    "deals_min_payment": 0,
    "deals_pict": "images.jpg",
    "created_date": "2019-05-06T13:07:28.000+0000" 
   
  }

* **Success Response:**
  
  <_What should the status code be on success and is there any returned data? This is useful when people need to to know what their callbacks should expect!_>

  * **Code:** 200 OK<br />
    **Content:** `{ id : 12 }`
 
* **Error Response:**

  <_Most endpoints will have many ways they can fail. From unauthorized access, to wrongful parameters etc. All of those should be liste d here. It might seem repetitive, but it helps prevent assumptions from being made where they should be._>

  * **Code:** 404 <br />
    **Content:** `{ error : "Bad Request" }`

  OR

  * **Code:** 500 <br />
    **Content:** `{ error : "Internal Server Error" }`

* **Sample Call:**

  <_Just a sample call to your endpoint in a runnable format ($.ajax call or a curl request) - this makes life easier and more predictable._> 

* **Notes:**

  <_This is where all uncertainties, commentary, discussion etc. can go. I recommend timestamping and identifying oneself when leaving comments here._> 
  
### Use Deals
* **URL**

  `/api/usedeals`

* **Method:**
  

  `GET` | `POST` | `DELETE` |
  
*  **URL Params**
 
   none

* **Data Params**

   {
        "id_record_deals": 5,
        "id_deals": 3,
        "id_customer": 2
    }

* **Success Response:**
  
  <_What should the status code be on success and is there any returned data? This is useful when people need to to know what their callbacks should expect!_>

  * **Code:** 200 OK<br />
    **Content:** `{ id : 12 }`
 
* **Error Response:**

  <_Most endpoints will have many ways they can fail. From unauthorized access, to wrongful parameters etc. All of those should be liste d here. It might seem repetitive, but it helps prevent assumptions from being made where they should be._>

  * **Code:** 404 <br />
    **Content:** `{ error : "Bad Request" }`

  OR

  * **Code:** 500 <br />
    **Content:** `{ error : "Internal Server Error" }`

* **Sample Call:**

  <_Just a sample call to your endpoint in a runnable format ($.ajax call or a curl request) - this makes life easier and more predictable._> 

* **Notes:**

  <_This is where all uncertainties, commentary, discussion etc. can go. I recommend timestamping and identifying oneself when leaving comments here._> 
