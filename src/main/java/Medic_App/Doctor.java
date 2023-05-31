package Medic_App;
// Это было сделано для семейных врачей, поэтому я не указываю их спецификацию(педиатр, кардиолог и тд).

import javax.persistence.*;
import lombok.Data;

@Table(name = "doctors")
@Entity
@Data
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int doctorId;
    private String fullName;
    private String dateOfBirth;
    private String gender;
    private String email;
    private String phone;
    private String login;
    private String password;

}
