//vTable information available in .class file

class Base{

public:

    virtual ~Base(){}

    virtual void f1();
    virtual void f2();
    virtual void f3();
    virtual void f4();
    virtual void f5();

protected:
int i;

};

class Derived : public Base{

public:

    //virtual ~Derived(){}

    virtual void f1();
    virtual void f2();
    void f3();
    //virtual f4();
    //virtual f5();
    virtual void f6();

};


int main(){



    return 0;
}
