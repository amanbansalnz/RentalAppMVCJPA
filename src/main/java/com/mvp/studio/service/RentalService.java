package com.mvp.studio.service;


import com.mvp.studio.model.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * This is the service class which carries out the core functionality around video renting
 */
@Service
public class RentalService {
    /**
      Spring will inject the VideoService object, it is the same as creating
      VideoService videoService = new VideoService()
      in the real we let spring handle all the dependency injection which is like saying
      RentalService has a dependency VideoService. This is the magic of spring.
     */
    @Autowired
    private VideoService videoService;


    /**
      We will now comment the following code below as this does not make sense to be here
      as this is not part of the rental service but the video service. It makes more sense
      if the video service returns information about the videos in the inventory its service says such.
      Where as the Rental Service should be worried about the renting functionality.
      Think in terms of services being focused on a single responsibility.
     */

//    Map<String, Video> videos = new HashMap<String, Video>();
//
//    public void addVideo(String videoName) {
//        Video video = new Video(videoName);
//        videos.put(videoName, video);
//    }

    public boolean checkOut(String videoName) {
        //retrieve the video map from the Video service now
        Map<String, Video> videos = videoService.getVideoMap();
        boolean isCheckedOut = false;

        if (videos.containsKey(videoName)) {
            Video video = videos.get(videoName);
            if (!video.isCheckedOut()) {
                video.setCheckedOut(true);
                isCheckedOut = true;
            }
        }
        return isCheckedOut;
    }

    public boolean returnVideo(String videoName) {
        Map<String, Video> videos = videoService.getVideoMap();
        boolean isReturned = false;

        if (videos.containsKey(videoName)) {
            Video video = videos.get(videoName);
            if (video.isCheckedOut()) {
                video.setCheckedOut(false);
                isReturned = true;
            }
        }
        return isReturned;
    }

    public void receiveRating(String videoName, int rating) {
        Map<String, Video> videos = videoService.getVideoMap();
        if (videos.containsKey(videoName)) {
            Video video = videos.get(videoName);
            video.setRating(rating);
        }
    }

    public String listInventory() {
        Map<String, Video> videos = videoService.getVideoMap();
        //Important to know the difference between String StringBuilder and StringBuffer
        StringBuilder builder = new StringBuilder("\n-------------------------------------- List Of Videos To Checkout ------------------------------------- \n");

        for (Map.Entry<String, Video> entry : videos.entrySet()) {
            Video video = entry.getValue();
            builder.append(video.toString());
        }
        return builder.toString();
    }

}
