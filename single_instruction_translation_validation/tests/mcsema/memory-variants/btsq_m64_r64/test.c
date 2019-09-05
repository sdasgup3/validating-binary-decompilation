void leaf() {
  __asm__("btsq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}