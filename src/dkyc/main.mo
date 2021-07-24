import Array "mo:base/Array";
import Types "./types"

actor {
    type Validator = Types.Validator;
    type User = Types.User;

    var user_id: Nat = 0;
    var validator_id: Nat = 0;
    var validators: [Validator] = [];
    var users: [User] = [];

    public func create_validator(name : Text) : async Validator {
        let validator: Validator = {
            id = validator_id;
            name = name;
            count = 0;
        };
        validator_id += 1;
        validators := Array.append<Validator>(validators ,[validator]);
        return validator;
    };
    public func create_user(name: Text, address: Text) : async User {
        let user: User = {
            id = user_id;
            data = {name; address};
            approved = false;
        };
        user_id += 1;
        users := Array.append<User>(users ,[user]);
        return user;
    };

    public func approve_user(user_id: Nat, approve: Bool): async User {
        let user: User = users[user_id];
        return user;
    };

    public func show_validators(): async [Validator]{
        return validators;
    }
};
