void leaf() {
  __asm__("cmovnael -4(%rbp), %ebx");
  }

void main() {
  leaf();
}