class Config {
  String url = "http://trino-lab.com/projects/isp/public/";
  String apiVersion = "v1";

  String token = "";

  String getApiURL(){
    return this.url + "/api/" + this.apiVersion;
  }
}
