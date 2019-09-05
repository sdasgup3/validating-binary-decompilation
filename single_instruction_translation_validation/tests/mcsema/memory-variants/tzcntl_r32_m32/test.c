void leaf() {
  __asm__("tzcntl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}