void leaf() {
  __asm__("andq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}