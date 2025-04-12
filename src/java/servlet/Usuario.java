package servlet;

class Usuario {
   private String nombre;
   private String mail;
   private String passw;

    public Usuario(String nombre, String mail, String passw) {
        this.nombre = nombre;
        this.mail = mail;
        this.passw = passw;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassw() {
        return passw;
    }

    public void setPassw(String passw) {
        this.passw = passw;
    }
    
}
