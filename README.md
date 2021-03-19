<img align="center" src="https://rocketelevators-yt.com/assets/RocketElevators_images/clear_logo.png"  alt="Logo" width="850" height="200">

</br>

# Rocket Elevators GraphQL API #


### Important Information ###

Heroku App URL : https://boiling-beyond-12456.herokuapp.com/

<details>
<summary><i><b>QUERIES</b></i></summary>

```
query question1{
 factIntervention(id:4){
    building{
    addressBuilding
  }
  startOfIntervention
  endOfIntervention
 }
}
```

```
query question2{
  building(id:8){
    addressBuilding
    interventions{
      id
      startOfIntervention
      endOfIntervention
      result
    }
    customer{
      id
      companyName
      fullNameCompanyContact
      companyContactPhone
      companyContactEmail
    }
  }
```
```
query question3{
    employee(id:5){
    firstName
    lastName
    interventionsCount
    interventions{
      id
      building{
        addressBuilding
        details{
          informationKey
        }
      }
    }
  }
}
```

</details>

--------------------------------------------------------------------------------------------------------------------

### This week we developped a *GraphQL API* Using *Ruby on Rails* that we deployed on *Heroku*. ###

We started by generating **Models** in order to link our different tables together. Here is an example:

![](2021-03-19-11-53-16.png)

</br>

We then generated **GraphQL Types** using the **Models** in order to have all the **Fields** populated. We also added other **Types** as **Fields** to allow us to query different tables through another:

![](2021-03-19-11-59-52.png)

We also added **Methods** to the *Types*:

![](2021-03-19-12-01-29.png)

</br>

Finally we had to define our different **Query Types**:

![](2021-03-19-12-04-22.png)

</br>
</br>


Then came the time for the **Deployment** which we chose to do on **Heroku**

Here are the settings we have:

![](2021-03-19-12-28-38.png)

