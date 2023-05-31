package Medic_App;

import jakarta.persistence.*;
import lombok.Data;

@Table(name = "appointments")
@Entity
@Data
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int patientId;
    private String appointmentDate;
    private String appointmentTime;
    private String diseases;
    private int doctorId;
    private String status;
}
