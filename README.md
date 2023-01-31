<a name="readme-top"></a>

<div align="center">

  <h1>David's project</h1>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

# 📖 Blog App <a name="about-project"></a>

> This is an App which allows you to show the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **It contains four tables with a relation one to many**
- **It allows to create user and post**
- **It allows to comment and like a post**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- Not available yet

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
gem install ruby
gem install rails
sudo apt-get install postgresql postgresql-contrib

```

### Setup

Clone this repository to your desired folder:

```
  cd my-folder
  git clone git@github.com:IngDavidTM/blog-app.git
```

### Install

Install this project with:

```
cd blog-app
bundle install
```

### Create database

Add the username and password that you are using in psql to `config/database.yml`

Create and migrate the database with:

```
rails db:create
rails db:migrate
```

### Usage

To run the project, execute the following command:

```
rails server
```

### Run tests

To run tests, add this data to your database:

**For users**

![Screenshot from 2023-01-31 13-01-10](https://user-images.githubusercontent.com/105117832/215845030-4ae71d1e-c709-4395-9785-4c8e0305e305.png)

**For posts**

![Screenshot from 2023-01-31 13-00-40](https://user-images.githubusercontent.com/105117832/215845218-10c8dea9-7d9d-4108-ba8e-0c05e25b660c.png)

**For likes**

![Screenshot from 2023-01-31 13-00-10](https://user-images.githubusercontent.com/105117832/215845129-8c93edba-0783-4f67-b9db-700f5cfc4ef4.png)

**For comments**

![Screenshot from 2023-01-31 12-59-30](https://user-images.githubusercontent.com/105117832/215845296-750180c6-34ad-4012-bfb2-e20a458ba295.png)




Then, run the following command:

```
rails spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="authors"></a>

👤 **David Tamayo**

- GitHub: [@IngDavidTM](https://github.com/IngDavidTM)
- Twitter: [@David5TM](https://twitter.com/David5TM)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ing-david-tamayo)


👤 **Cesar Alberto Valencia Aguilar**

- GitHub: [@cvalencia1991](https://github.com/cvalencia1991)
- Twitter: [@cvalenciaguilar](https://twitter.com/cvalenciaguilar)
- LinkedIn: [@cvalencia1991](https://www.linkedin.com/in/cvalenciaguilar/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add style and improve UX**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, kindly give a start to support a greater and widespread reach

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Do I need node installed?**

  - Yes you do

- **Do I need internet Access**

  - Not necessary

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
