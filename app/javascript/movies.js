let searchResults;
document.addEventListener('turbo:load', function () {	
  if (document.getElementById('movie_title')) {
		new Autocomplete('movie_title', {
		  onSearch: ({ currentValue }) => {
		    const api = `https://www.omdbapi.com/?apikey=28e67bb&type=movie&s=` + currentValue;
		    return new Promise((resolve) => {
		      fetch(api)
		        .then((response) => response.json())
		        .then((data) => {
		          resolve(data);
		        })
		        .catch((error) => {
		          console.error(error);
		        });
		    });
		  },
		  onResults: ({ matches }) => {
				searchResults = matches.Search;
				return matches.Search
		    	.map(el => {
		      	return `<li>${el.Title}</li>`;
		      }).join('');
		  },
			onSubmit: ({ index }) => {
				let movieData = searchResults[index];
				const dataApi = `https://www.omdbapi.com/?apikey=28e67bb&type=movie&i=` + movieData.imdbID;
				fetch(dataApi)
				.then((response) => response.json())
				.then((data) => {
					console.log(data);
					document.getElementById("show_poster").src = data.Poster;
					document.getElementById("movie_url").value = data.Poster;
					document.getElementById("movie_year").value = data.Year;
					document.getElementById("movie_genre").value = data.Genre;
					document.getElementById("movie_director").value = data.Director;
				})
				.catch((error) => {
					console.error(error);
				});
		

			}
		});
	} else {
	}
});