package evaluation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class EvaluationDAO {

	public int write(EvaluationDTO evaluationDTO) {
		String SQL = "INSERT INTO EVALUATION VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, 0)"; 
		// EvaluationID는
		// auto increament
		// 설정이 되있기 때문에
		// NULL값을 넣어주면 차례대로
		// 증가함
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, evaluationDTO.getUserID());
			pstmt.setString(2, evaluationDTO.getGuideName());
			pstmt.setInt(3, evaluationDTO.getYear());
			pstmt.setString(4, evaluationDTO.getMonth());
			pstmt.setString(5, evaluationDTO.getDay());
			pstmt.setString(6, evaluationDTO.getEvaluationTitle());
			pstmt.setString(7, evaluationDTO.getEvaluationContent());
			pstmt.setString(8, evaluationDTO.getTotalScore());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
}
