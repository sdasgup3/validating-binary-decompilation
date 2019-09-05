void leaf() {
  __asm__("cmovaeq %rcx, %rbx");
  }

void main() {
  leaf();
}