#include "monty.h"
/**
 * f_swap - adds the top two elements of the stack.
 * @head: stack head
 * @counter: line_number
 * Return: no return
*/

void f_swap(stack_t **head, unsigned int counter) {
    if (head == NULL || *head == NULL || (*head)->next == NULL) {
        fprintf(stderr, "L%d: can't swap, insufficient elements in the stack\n", counter);
        // Perform necessary cleanup here if required before exit
        exit(EXIT_FAILURE);
    }

    stack_t *top = *head;
    int temp = top->n;
    top->n = top->next->n;
    top->next->n = temp;
}
