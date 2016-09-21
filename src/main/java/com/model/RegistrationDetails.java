package com.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;




	@Entity
	@Component
	public class RegistrationDetails implements Serializable{
		private static final long serialVersionUID = 4657462015039726030L;
		private String name;
		private String password;
		@Transient
		private String confirm_password;
		@Id
		private String mail_id;
		private String mobile_number;
		private Boolean enable;
		@OneToOne
		@JoinColumn(name="Cart_id")
		private Cart cart;
		
		public Cart getCart() {
			return cart;
		}


		public void setCart(Cart cart) {
			this.cart = cart;
		}


		public Boolean getEnable() {
			return enable;
		}


		public void setEnable(Boolean enable) {
			this.enable = enable;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}


		public String getConfirm_password() {
			return confirm_password;
		}


		public void setConfirm_password(String confirm_password) {
			this.confirm_password = confirm_password;
		}


		public String getMail_id() {
			return mail_id;
		}


		public void setMail_id(String mail_id) {
			this.mail_id = mail_id;
		}


		public String getMobile_number() {
			return mobile_number;
		}


		public void setMobile_number(String mobile_number) {
			this.mobile_number = mobile_number;
		}


		public static long getSerialversionuid() {
			return serialVersionUID;
		}
	}