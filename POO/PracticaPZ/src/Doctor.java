public class Doctor {
    private static int id = 0;
    String name;
    String speciality;

    public Doctor(String name, String speciality) {
        this.id++;
        this.name = name;
        this.speciality = speciality;
    }

    //Comportamientos

    public void showName(){
        System.out.println(id);
        System.out.println(name);
        System.out.println(speciality);
    }

}
