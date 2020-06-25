package evaluation;

public class EvaluationDTO {

		int evalutionID;
		String userID;
		String guideName;
		int year;
		String month;
		String day;
		String evaluationTitle;
		String evaluationContent;
		String totalScore;
		int likeCount;
		
		public int getEvalutionID() {
			return evalutionID;
		}
		public void setEvalutionID(int evalutionID) {
			this.evalutionID = evalutionID;
		}
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public String getGuideName() {
			return guideName;
		}
		public void setGuideName(String guideName) {
			this.guideName = guideName;
		}
		public int getYear() {
			return year;
		}
		public void setYear(int year) {
			this.year = year;
		}
		public String getMonth() {
			return month;
		}
		public void setMonth(String month) {
			this.month = month;
		}
		public String getDay() {
			return day;
		}
		public void setDay(String day) {
			this.day = day;
		}
		public String getEvaluationTitle() {
			return evaluationTitle;
		}
		public void setEvaluationTitle(String evaluationTitle) {
			this.evaluationTitle = evaluationTitle;
		}
		public String getEvaluationContent() {
			return evaluationContent;
		}
		public void setEvaluationContent(String evaluationContent) {
			this.evaluationContent = evaluationContent;
		}
		public String getTotalScore() {
			return totalScore;
		}
		public void setTotalScore(String totalScore) {
			this.totalScore = totalScore;
		}
		public int getLikeCount() {
			return likeCount;
		}
		public void setLikeCount(int likeCount) {
			this.likeCount = likeCount;
		}
		
		public EvaluationDTO() {
			
		}
		
		public EvaluationDTO(int evalutionID, String userID, String guideName, int year, String month, String day,
				String evaluationTitle, String evaluationContent, String totalScore, int likeCount) {
			super();
			this.evalutionID = evalutionID;
			this.userID = userID;
			this.guideName = guideName;
			this.year = year;
			this.month = month;
			this.day = day;
			this.evaluationTitle = evaluationTitle;
			this.evaluationContent = evaluationContent;
			this.totalScore = totalScore;
			this.likeCount = likeCount;
		}
		
		
}
