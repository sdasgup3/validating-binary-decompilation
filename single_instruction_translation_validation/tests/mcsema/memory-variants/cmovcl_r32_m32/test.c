void leaf() {
  __asm__("cmovcl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}