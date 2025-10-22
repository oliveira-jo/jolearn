package com.devjoliveira.jolearn.entities;

import java.time.Instant;

import com.devjoliveira.jolearn.entities.enums.DeliverStatus;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinColumns;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_deliver")
public class Deliver {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  private String uri;

  @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
  private Instant moment;
  private DeliverStatus status;
  private String feedback;
  private Integer correctCount;

  @ManyToOne
  @JoinColumns({
      @JoinColumn(name = "offer_id"),
      @JoinColumn(name = "user_id")
  })
  private Enrollment enrollment;

  @ManyToOne
  @JoinColumn(name = "lesson_id")
  private Lesson lesson;

  public Deliver() {
  }

  public Deliver(Long id, String uri, Instant moment, DeliverStatus status, String feedBack, Integer correctCount,
      Lesson lesson, Enrollment enrollment) {
    this.id = id;
    this.uri = uri;
    this.moment = moment;
    this.status = status;
    this.feedback = feedBack;
    this.correctCount = correctCount;
    this.lesson = lesson;
    this.enrollment = enrollment;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getUri() {
    return uri;
  }

  public void setUri(String uri) {
    this.uri = uri;
  }

  public Instant getMoment() {
    return moment;
  }

  public void setMoment(Instant moment) {
    this.moment = moment;
  }

  public DeliverStatus getStatus() {
    return status;
  }

  public void setStatus(DeliverStatus status) {
    this.status = status;
  }

  public String getFeedback() {
    return feedback;
  }

  public void setFeedback(String feedBack) {
    this.feedback = feedBack;
  }

  public Integer getCorrectCount() {
    return correctCount;
  }

  public void setCorrectCount(Integer correctCount) {
    this.correctCount = correctCount;
  }

  public Lesson getLesson() {
    return lesson;
  }

  public void setLesson(Lesson lesson) {
    this.lesson = lesson;
  }

  public Enrollment getEnrollment() {
    return enrollment;
  }

  public void setEnrollment(Enrollment enrollment) {
    this.enrollment = enrollment;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((id == null) ? 0 : id.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    Deliver other = (Deliver) obj;
    if (id == null) {
      if (other.id != null)
        return false;
    } else if (!id.equals(other.id))
      return false;
    return true;
  }

}
