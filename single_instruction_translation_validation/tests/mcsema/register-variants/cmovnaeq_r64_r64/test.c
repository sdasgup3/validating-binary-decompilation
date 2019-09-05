void leaf() {
  __asm__("cmovnaeq %rcx, %rbx");
  }

void main() {
  leaf();
}