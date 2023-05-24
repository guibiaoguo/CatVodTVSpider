package com.github.catvod.parser;

import com.google.gson.annotations.SerializedName;

import java.util.List;

public class TVShow {

    @SerializedName("plot")
    private String plot;
    @SerializedName("outline")
    private String outline;
    @SerializedName("lockdataa")
    private boolean lockdataa;
    @SerializedName("dateadded")
    private String dateadded;
    @SerializedName("title")
    private String title;
    @SerializedName("originaltitle")
    private String originaltitle;
    @SerializedName("director")
    private List<String> director;
    @SerializedName("trailer")
    private String trailer;
    @SerializedName("rating")
    private double rating;
    @SerializedName("year")
    private String year;
    @SerializedName("sorttitle")
    private String sorttitle;
    @SerializedName("mpaa")
    private String mpaa;
    @SerializedName("imdb_id")
    private String imdbId;
    @SerializedName("tmdbid")
    private String tmdbid;
    @SerializedName("premiered")
    private String premiered;
    @SerializedName("releasedate")
    private String releseadate;
    @SerializedName("runtime")
    private int runtime;
    @SerializedName("genre")
    private List<String> genre;
    @SerializedName("studio")
    private String studio;
    @SerializedName("uniqueid")
    private List<String> uniqueid;
    @SerializedName("id")
    private int id;
    @SerializedName("episodeguide")
    private Object episodeguide;
    @SerializedName("season")
    private int season;
    @SerializedName("episode")
    private int episode;
    @SerializedName("displayorder")
    private String displayorder;
    @SerializedName("status")
    private String status;

    public String getPlot() {
        return plot;
    }

    public String getOutline() {
        return outline;
    }

    public boolean isLockdataa() {
        return lockdataa;
    }

    public String getDateadded() {
        return dateadded;
    }

    public String getTitle() {
        return title;
    }

    public String getOriginaltitle() {
        return originaltitle;
    }

    public List<String> getDirector() {
        return director;
    }

    public String getTrailer() {
        return trailer;
    }

    public double getRating() {
        return rating;
    }

    public String getYear() {
        return year;
    }

    public String getSorttitle() {
        return sorttitle;
    }

    public String getMpaa() {
        return mpaa;
    }

    public String getImdbId() {
        return imdbId;
    }

    public String getTmdbid() {
        return tmdbid;
    }

    public String getPremiered() {
        return premiered;
    }

    public String getReleseadate() {
        return releseadate;
    }

    public int getRuntime() {
        return runtime;
    }

    public List<String> getGenre() {
        return genre;
    }

    public String getStudio() {
        return studio;
    }

    public List<String> getUniqueid() {
        return uniqueid;
    }

    public int getId() {
        return id;
    }

    public Object getEpisodeguide() {
        return episodeguide;
    }

    public int getSeason() {
        return season;
    }

    public int getEpisode() {
        return episode;
    }

    public String getDisplayorder() {
        return displayorder;
    }

    public String getStatus() {
        return status;
    }
}
