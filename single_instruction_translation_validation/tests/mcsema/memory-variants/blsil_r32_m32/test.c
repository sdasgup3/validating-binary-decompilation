void leaf() {
  __asm__("blsil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}