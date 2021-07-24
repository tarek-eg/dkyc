  module {  
      public type Validator = {
        id: Nat;
        name: Text;
        count: Nat;
    };
    public  type User = {
        id: Nat;
        data: {
            name: Text;
            address: Text;
        };
        approved: Bool;
    };
    }