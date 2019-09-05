void leaf() {
  __asm__("blsmskq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}