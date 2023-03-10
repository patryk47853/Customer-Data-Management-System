package pl.patrykjava.dao;

import pl.patrykjava.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    List<Customer> getCustomers(int sortField);

    Customer getCustomer(int customerId);

    List<Customer> searchCustomers(String customerName);

    void saveCustomer(Customer theCustomer);

    void deleteCustomer (int customerId);
}
