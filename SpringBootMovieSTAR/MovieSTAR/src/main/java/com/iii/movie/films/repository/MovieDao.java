package com.iii.movie.films.repository;

import java.util.List;

import com.iii.movie.films.model.Movie;
import com.iii.movie.films.model.Schedule;

public interface MovieDao {
	
	public boolean checkMovieId(Integer movieId);
	
    public Movie saveMovie(Movie movie);
    
    public void saveSchedule(Integer movieId,Schedule schedule);
    
    public Movie updateMovie(Movie movie);
    
    public void deleteMovie(Integer movieId);
    
    public List<Movie> selectAll(Movie movie);
    
    public Movie selectById(Integer movieId);
    
    public Movie selectByName(String name);

	public void saveScheduleByName(String movieName, Schedule schedule);
	
	public List<Movie> selectComingSoonMovie();

	public List<Movie> selectMovieByType(String movietype);
	
	public List<Movie> selectMovieLikeName(String moviename);
}
