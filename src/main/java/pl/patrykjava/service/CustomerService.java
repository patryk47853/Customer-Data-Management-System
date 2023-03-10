package pl.patrykjava.service;

import pl.patrykjava.entity.Customer;

import java.util.List;

public interface CustomerService {

    List<Customer> getCustomers(int sortField);

    Customer getCustomer(int customerId);

    List<Customer> searchCustomers(String customerName);

    void saveCustomer(Customer theCustomer);

    void deleteCustomer (int customerId);

}
