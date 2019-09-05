void leaf() {
  __asm__("cmovpoq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}