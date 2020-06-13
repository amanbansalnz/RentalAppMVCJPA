package com.mvp.studio.service;

import com.mvp.studio.model.Video;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


//@Service will be used by spring which tells spring to to inject
// dependency i.e. taking advantage of dependency injection
@Service
public class VideoService {

    private Map<String, Video> videos;

    //default constructor where on creation of VideoService object
    //we want to initialise default behaviour
   public VideoService(){
        this.videos = new HashMap<String, Video>();
        addInitialVideos();
    }

    //method to fetch all videos as a list.
    public List<Video> fetchAllVideos(){

        //simply converted the map collection to list collection.
        // Read up on Collections Java to know more
       return new ArrayList(videos.values());
    }


    //method to add video
    public Video addVideo(String videoName) {
        Video video = new Video(videoName);
        videos.put(videoName, video);
        return video;
    }



    //Note here we have copied this code from the previous video
    //rental project where we are adding predefined movies.
    private void addInitialVideos() {
        addVideo("The Matrix");
        addVideo("Godfather II");
        addVideo("Star Wars Episode IV: A New Hope");
        addVideo("ET");
        addVideo("War");
        addVideo("The Meg");
        addVideo("Star Trooper");
        addVideo("Avengers");
        addVideo("X-Men");
        addVideo("I am Java");
    }


    //getter and setter
    public Map<String, Video> getVideos() {
        return videos;
    }
}
