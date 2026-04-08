// ye patient table hai (jo clinic me aate hain)
patients [icon: user, color: blue] {
  patient_id int pk
  name string
  age int
  gender string
  phone string
  address string
}

// ye doctor table hai (alag-alag specialization ke saath)
doctors [icon: stethoscope, color: green] {
  doctor_id int pk
  name string
  specialty string   // cardiologist, dentist, etc.
  phone string
}

// ye appointment hai (booking hoti hai pehle)
appointments [icon: calendar, color: purple] {
  appointment_id int pk
  patient_id int
  doctor_id int
  appointment_date timestamp
  status string   // booked / cancelled / completed
}

// ye actual visit hai (jab patient doctor se milta hai)
consultations [icon: activity, color: orange] {
  consultation_id int pk
  appointment_id int
  patient_id int
  doctor_id int
  consultation_date timestamp
  notes string   // doctor ka observation
}

// ye diagnostic tests hai (doctor prescribe karta hai)
tests [icon: flask, color: red] {
  test_id int pk
  consultation_id int
  test_name string
  status string   // pending / completed
}

// ye reports hai (test ke baad generate hoti hai)
reports [icon: file-text, color: blue] {
  report_id int pk
  test_id int
  result string
  report_date timestamp
}

// ye payment hai (consultation ya test ke liye)
payments [icon: credit-card, color: green] {
  payment_id int pk
  patient_id int
  consultation_id int
  amount number
  payment_date timestamp
  status string   // paid / pending
}

// relations start yaha se

// ek patient multiple appointments book kar sakta hai
patients.patient_id < appointments.patient_id

// ek doctor multiple patients dekh sakta hai
doctors.doctor_id < appointments.doctor_id

// ek appointment se consultation ho sakta hai (ya nahi bhi)
appointments.appointment_id - consultations.appointment_id

// ek patient ke multiple consultations ho sakte hain
patients.patient_id < consultations.patient_id

// ek doctor multiple consultations karega
doctors.doctor_id < consultations.doctor_id

// ek consultation me multiple tests prescribe ho sakte hain
consultations.consultation_id < tests.consultation_id

// har test ka ek report hota hai
tests.test_id - reports.test_id

// ek consultation ka payment hota hai
consultations.consultation_id < payments.consultation_id

// ek patient multiple payments kar sakta hai
patients.patient_id < payments.patient_id
