void leaf() {
  __asm__("cmovbeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}