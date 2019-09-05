void leaf() {
  __asm__("andq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}