void leaf() {
  __asm__("cmpq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}