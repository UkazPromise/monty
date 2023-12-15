#include "monty.h"

/**
 * f_sub - subtracts the top element of the stack from the second top element.
 * @head: stack head
 * @counter: line_number
 * Return: no return
 */
void f_sub(stack_t **head, unsigned int counter)
{
    stack_t *aux = *head;
    int nodes = 0, sub;

    while (aux)
    {
        nodes++;
        aux = aux->next;
    }

    if (nodes < 2)
    {
        fprintf(stderr, "L%d: can't sub, stack too short\n", counter);
        fclose(bus.file);
        free(bus.content);
        free_stack(*head);
        exit(EXIT_FAILURE);
    }

    aux = *head;
    sub = aux->next->n - aux->n;
    aux->next->n = sub;
    *head = aux->next;
    free(aux);
}
