package Medic_App;

import jakarta.persistence.*;
import lombok.Data;

@Table(name = "patients")
@Entity
@Data
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int patientId;
    private String fullName;
    private String dateOfBirth;
    private String gender;
    private String email;// будет как логин
    private String password;
    private String phone;
}
