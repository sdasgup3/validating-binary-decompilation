void leaf() {
  __asm__("blsiq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}