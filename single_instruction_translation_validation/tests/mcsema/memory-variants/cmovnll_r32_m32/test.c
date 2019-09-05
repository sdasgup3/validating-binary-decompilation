void leaf() {
  __asm__("cmovnll -4(%rbp), %ebx");
  }

void main() {
  leaf();
}